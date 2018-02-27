<?php
require('../module/fpdf/fpdf.php');
require('../koneksi.php');
setlocale (LC_TIME, 'INDONESIAN');
class PDF extends FPDF {
        function Header() {
        // Select Arial bold 15
        $this->SetFont('Times','B',13);
        $this->Text(110,18,'DAFTAR CALON PESERTA DIDIK BARU');
        $this->SetFont('Times','I',10);
        $this->Text(230,18, 'Cetakan tanggal '.strftime("%d %B %Y", time()));
        // Line break
        $this->Ln(18);
    }
    function Footer() {
        // Go to 1.5 cm from bottom
        $this->SetY(-18);
        // Select Arial italic 8
        $this->SetFont('Times','I',8);
        // Print centered page number
        $this->Cell(0,10,'Page '.$this->PageNo(),0,0,'C');
    }
}
$pdf = new PDF('L','mm','A4');
// Column headings
$pdf->AliasNbPages();
$pdf->AddPage();
$pdf->SetTitle('Laporan Daftar Calon Peserta Didik Baru');

$count= mysqli_query($koneksi, "SELECT * FROM pendaftar"); // SQL to get 10 records 
$pdf->SetFont('Times','B',13);
// $pdf->Text(110, 10, 'DAFTAR CALON PESERTA DIDIK BARU');
$width_cell=array(10,35,70,60,40,35);

$pdf->SetX(25);
$pdf->SetFillColor(193,229,252); // Background color of header 
// Header starts /// 
$pdf->Cell($width_cell[0],10,'No.',1,0,'C',true); // First header column 
$pdf->Cell($width_cell[1],10,'ID Pendaftaran',1,0,'C',true); // Second header column
$pdf->Cell($width_cell[2],10,'Nama Lengkap',1,0,'C',true); // Third header column 
$pdf->Cell($width_cell[3],10,'Asal Sekolah',1,0,'C',true); // Fourth header column
$pdf->Cell($width_cell[4],10,'Tanggal Daftar',1,0,'C',true); // Third header column 
$pdf->Cell($width_cell[5],10,'Status Form',1,1,'C',true); // Third header column 

//// header ends ///////

$pdf->SetFont('Times','',12);
$pdf->SetFillColor(235,236,236); // Background color of header 
$fill=false; // to give alternate background fill color to rows 

/// each record is one row
$no = 1;
while ($row = mysqli_fetch_array($count)) {
$pdf->SetX(25);
$pdf->Cell($width_cell[0],10,$no,1,0,'C',$fill);
$pdf->Cell($width_cell[1],10,$row['IDPENDAFTAR'],1,0,'C',$fill);
$pdf->Cell($width_cell[2],10,$row['NAMAPENDAFTAR'],1,0,'C',$fill);
$pdf->Cell($width_cell[3],10,$row['SEKOLAHASAL'],1,0,'C',$fill);
$pdf->Cell($width_cell[4],10,strftime("%d %B %Y", strtotime($row['TANGGALDAFTAR'])),1,0,'C',$fill);
$pdf->Cell($width_cell[5],10,$row['STATUSFORM'],1,1,'C',$fill);
$no++;
$fill = !$fill; // to give alternate background fill  color to rows
}

/// end of records /// 

$pdf->Output('I','DAFTAR_CPDB.pdf');
?>