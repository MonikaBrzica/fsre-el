<template>
  <div id="app">
    <div class=nav>
      <p>Senzori</p>
    </div>
    <div id="chart">
        <apexchart type="bar" height="550" :options="chartOptions" :series="series"></apexchart>
    </div>
  </div>
</template>

<script>
import VueApexCharts from 'vue-apexcharts'
import axios from 'axios'
export default {
  components: {
    apexchart: VueApexCharts
  },
  data: function () {
    return {
      value: {}
    }
  },
  mounted () {
    axios.get('http://localhost/fsre-backend/config.php',
      {
        'Access-Control-Allow-Origin': '*'
      })
      .then(response => {
        this.value = response.data
        for (let i = 0; i < this.value.length; i++) {
          this.chartOptions.xaxis.categories[i] = this.value[i].idmjerenja
          this.series[0].data[i] = this.value[i].vibr
          this.series[1].data[i] = this.value[i].avibr
          this.series[2].data[i] = this.value[i].temper
        }
      })
  },
  computed: {
    series () {
      return [{
        name: 'Vibracija',
        data: []
      }, {
        name: 'Avibracija',
        data: []
      }, {
        name: 'Temperatura',
        data: []
      }]
    },
    chartOptions () {
      return {
        chart: {
          type: 'bar',
          height: 50
        },
        colors: ['#E90D0D', '#0DE940', '#E2E90D'],
        plotOptions: {
          bar: {
            horizontal: false,
            columnWidth: '55%',
            endingShape: 'rounded'
          }
        },
        dataLabels: {
          enabled: false
        },
        stroke: {
          show: true,
          width: 2,
          colors: ['transparent']
        },
        xaxis: {
          categories: []
        },
        yaxis: {
          title: {
          }
        },
        fill: {
          opacity: 1
        }
      }
    }
  }
}
</script>

<style>
* {
  margin: 0;
  padding: 0;
}
.nav{
  height: 10%;
}
p {
  font-family: 'Times New Roman', Times, serif;
  font-size: 50px;
  text-align: center;
  color:  rgb(245,245,247);
  padding-top: 15px;
}
#app {
  height: 100vh;
  width: 100%;
  background-image: url('pozadina.jpg');
  background-size: cover;
}
</style>
