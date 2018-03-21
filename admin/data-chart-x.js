$(document).ready(function(){
    $.ajax({
        url: "data.php?ta=2018%2F2019",
        method: "GET",
        success: function(data) {
            console.log(data);
            var player = [];
            var score = [];
            for(var i in data) {
                player.push("Bulan-" + data[i].bulan);
                score.push(data[i].jumlah);
            }
            var chartdata = {
                labels: player,
                datasets : [
                    {
                        label: 'Jumlah Pendaftar',
                        backgroundColor: 'rgb(0, 174, 255)',
                        data: score
                    }
                ]
            };
            var ctx = $("#mycanvas");
            var barGraph = new Chart(ctx, {
                type: 'bar',
                data: chartdata,
                options: {
                    title: {
                        display: true,
                        text: 'Jumlah Pendaftar per Bulan',
                        fontSize: 18
                    },
                    scales: {
                        yAxes: [{
                            ticks: {
                                beginAtZero:true
                            }
                        }]
                    }
                }
            });
        },
        error: function(data) {
            console.log(data);
        }
    });
    $.ajax({
        url: "data-pie.php?ta=2018%2F2019",
        method: "GET",
        success: function(data) {
            console.log(data);
            var kelamin = [];
            var jumlahdata = [];

            for(var i in data) {
                kelamin.push(data[i].jk);
                jumlahdata.push(data[i].jumlah);
            }
            var ctx = document.getElementById("myChart");
            var barGraph = new Chart(ctx, {
                type: 'pie',
                data: {
                    labels: kelamin,
                    datasets: [{
                        label: 'Jumlah Pendaftar',
                        data: jumlahdata,
                        backgroundColor: [
                            'rgb(202, 17, 17)',
                            'rgb(223, 125, 14)'
                        ]
                    }]
                },
                options: {
                    title: {
                        display: true,
                        text: 'Jumlah Pendaftar dari Jenis Kelamin',
                        fontSize: 18
                    }
                }
            });
        },
        error: function(data) {
            console.log(data);
        }
    });
});