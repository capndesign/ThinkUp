
    <div id="view_duration_{$i->id}">&nbsp;</div>
    <script type="text/javascript">
        // Load the Visualization API and the standard charts
        google.load('visualization', '1');
        // Set a callback to run when the Google Visualization API is loaded.
        google.setOnLoadCallback(drawChart{$i->id} );
        {literal}
        function drawChart{/literal}{$i->id}{literal}() {
        {/literal}
            {literal}
            var view_duration_data_{/literal}{$i->id} = new google.visualization.DataTable({$i->related_data[0]});
            {literal}
            var view_duration_chart_{/literal}{$i->id}{literal} = new google.visualization.ChartWrapper({
              containerId: 'chart-{/literal}{$i->id}{literal}',
              chartType: 'BarChart',
              dataTable: view_duration_data_{/literal}{$i->id}{literal},
              options: {
                  width: 300,
                  height: 250,
                  chartArea:{left:100,height:"80%"},
                  hAxis: {
                    textStyle: { color: '#999', fontSize: 10 }
                  },
                  vAxis: {
                    minValue: 0,
                    baselineColor: '#ccc',
                    textStyle: { color: '#999' },
                    gridlines: { color: '#eee' }
                  }
                }
            });
            view_duration_chart_{/literal}{$i->id}{literal}.draw();
        }
        {/literal}
    </script>
