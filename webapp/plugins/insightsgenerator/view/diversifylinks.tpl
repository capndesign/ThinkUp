{if $i->related_data.bar_chart}

<div id="diversify_links_{$i->id}" class="chart"></div>

<script type="text/javascript">
// Load the Visualization API and the standard charts
google.load('visualization', '1.0');
// Set a callback to run when the Google Visualization API is loaded.
google.setOnLoadCallback(drawChart{$i->id});
{literal}

function drawChart{/literal}{$i->id}() {literal}{

{/literal}
  var diversify_links_data_{$i->id} = new google.visualization.DataTable(
  {$i->related_data.bar_chart});
  var c = window.tu.constants.colors;
{literal}
  var diversify_links_chart_{/literal}{$i->id}{literal} = new google.visualization.ChartWrapper({
  {/literal}
      containerId: 'diversify_links_{$i->id}',
      {literal}
      chartType: 'PieChart',
      dataTable: diversify_links_data_{/literal}{$i->id}{literal},
      options: {
          legend: { position: 'top', maxLines: 10},
          width: 300,
          right: 250,
          interpolateNulls: true,
          colors: {/literal}[c.{$color}, c.{$color}_dark, c.{$color}_darker],{literal}
          title: 'Most Popular Sites this Month'
      }
  });
  diversify_links_chart_{/literal}{$i->id}{literal}.draw();
  }
  {/literal}
</script>
{/if}
