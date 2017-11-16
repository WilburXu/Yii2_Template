$(function () {
    echartsInit();
});


function echartsInit() {
    var params;
    params = {'type':true};
    $.ajax({
        url: '/echarts/pie?r=' + Math.random(),
        data: params,
        dataType: 'json',
        success: function (result) {
            if (result.status == 200) {
                var eTitle = '这是一个不错的故事。';
                var eSubText = '纯属虚构';
                var eLegend = result.data.eLegend;
                var eSeries = result.data.eSeries;
                build(eTitle, eSubText, eLegend, eSeries);
            }
        },
    })
}

function build(eTitle, eSubText, eLegend, eSeries) {
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));

    // 指定图表的配置项和数据
    var option = {
        title: {
            text: eTitle,
            subtext: eSubText,
            x: 'center'
        },
        tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend: {
            orient: 'vertical',
            left: 'left',
            data: eLegend
        },
        series: [
            {
                name: '访问来源',
                type: 'pie',
                radius: '55%',
                center: ['50%', '60%'],
                data: eSeries,
                itemStyle: {
                    emphasis: {
                        shadowBlur: 10,
                        shadowOffsetX: 0,
                        shadowColor: 'rgba(0, 0, 0, 0.5)'
                    }
                }
            }
        ]
    };

    myChart.setOption(option);
}


