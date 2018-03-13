$(document).ready(function(){
    $.ajax({
        url: "data.php",
        method: "GET",
        success: function(data) {
            console.log(data);
            var player = [];
            var score = [];

            for(var i in data) {
                player.push("Bulan-" + data[i].bulan);
                //gender.push(data[i].jeniskelamin);
                score.push(data[i].jumlah);
            }

            var chartdata = {
                labels: player,
                datasets : [
                    {
                        label: 'Jumlah Pendaftar',
                        backgroundColor: 'rgb(0, 174, 255)',
                        borderColor: 'rgba(200, 200, 200, 0.75)',
                        hoverBackgroundColor: 'rgb(0, 17, 255)',
                        hoverBorderColor: 'rgba(200, 200, 200, 1)',
                        data: score
                    }
                ]
            };
            
            var ctx = $("#mycanvas");

            var barGraph = new Chart(ctx, {
                type: 'bar',
                data: chartdata,
                options: {
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
            //console.log(data, data1);
        }
    });
});