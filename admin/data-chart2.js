$(document).ready(function(){
    $.ajax({
        url: "data.php",
        method: "GET",
        success: function(data, data1) {
            console.log(data, data1);
            var player = [];
            var score = [];
            var player1 = [];
            var score1 = [];

            for(var i in data) {
                player.push("Bulan-" + data[i].bulan);
                //gender.push(data[i].jeniskelamin);
                score.push(data[i].jumlah);
            }
            for(var j in data1) {
                player1.push(data1[j].jk);
                //gender.push(data[i].jeniskelamin);
                score1.push(data1[j].jumlah1);
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
            var chartdata1 = {
                labels: player1,
                datasets : [
                    {
                        label: player1,
                        backgroundColor: 'rgb(0, 174, 255)',
                        borderColor: 'rgba(200, 200, 200, 0.75)',
                        hoverBackgroundColor: 'rgb(0, 17, 255)',
                        hoverBorderColor: 'rgba(200, 200, 200, 1)',
                        data: score1
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

            var ctx1 = $("#myChart");

            var barGraph1 = new Chart(ctx1, {
                type: 'bar',
                data: chartdata1
            });
        },
        error: function(data, data1) {
            //console.log(data, data1);
        }
    });
});