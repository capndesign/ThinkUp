<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <meta name="viewport" content="width=device-width"/>
  <style>
/**********************************************
* Ink v1.0.5 - Copyright 2013 ZURB Inc        *
**********************************************/

/* Client-specific Styles & Reset */

#outlook a {
  padding:0;
}

body{
  width:100% !important;
  min-width: 100%;
  -webkit-text-size-adjust:100%;
  -ms-text-size-adjust:100%;
  margin:0;
  padding:0;
}

.ExternalClass {
  width:100%;
}

.ExternalClass,
.ExternalClass p,
.ExternalClass span,
.ExternalClass font,
.ExternalClass td,
.ExternalClass div {
  line-height: 100%;
}

#backgroundTable {
  margin:0;
  padding:0;
  width:100% !important;
  line-height: 100% !important;
}

img {
  outline:none;
  text-decoration:none;
  -ms-interpolation-mode: bicubic;
  width: auto;
  max-width: 100%;
  float: left;
  clear: both;
  display: block;
}

center {
  width: 100%;
  min-width: 580px;
}

a img {
  border: none;
}

p {
  margin: 0 0 0 10px;
}

table {
  border-spacing: 0;
  border-collapse: collapse;
}

td {
  word-break: break-word;
  -webkit-hyphens: auto;
  -moz-hyphens: auto;
  hyphens: auto;
  border-collapse: collapse !important;
}

table, tr, td {
  padding: 0;
  vertical-align: top;
  text-align: left;
}

hr {
  color: #d9d9d9;
  background-color: #d9d9d9;
  height: 1px;
  border: none;
}

/* Responsive Grid */

table.body {
  height: 100%;
  width: 100%;
}

table.container {
  width: 580px;
  margin: 0 auto;
  text-align: inherit;
}

table.row {
  padding: 0px;
  width: 100%;
  position: relative;
}

table.container table.row {
  display: block;
}

td.wrapper {
  padding: 10px 20px 0px 0px;
  position: relative;
}

table.columns,
table.column {
  margin: 0 auto;
}

table.columns td,
table.column td {
  padding: 0px 0px 10px;
}

table.columns td.sub-columns,
table.column td.sub-columns,
table.columns td.sub-column,
table.column td.sub-column {
  padding-right: 10px;
}

td.sub-column, td.sub-columns {
  min-width: 0px;
}

table.row td.last,
table.container td.last {
  padding-right: 0px;
}

table.one { width: 30px; }
table.two { width: 80px; }
table.three { width: 130px; }
table.four { width: 180px; }
table.five { width: 230px; }
table.six { width: 280px; }
table.seven { width: 330px; }
table.eight { width: 380px; }
table.nine { width: 430px; }
table.ten { width: 480px; }
table.eleven { width: 530px; }
table.twelve { width: 580px; }

table.one center { min-width: 30px; }
table.two center { min-width: 80px; }
table.three center { min-width: 130px; }
table.four center { min-width: 180px; }
table.five center { min-width: 230px; }
table.six center { min-width: 280px; }
table.seven center { min-width: 330px; }
table.eight center { min-width: 380px; }
table.nine center { min-width: 430px; }
table.ten center { min-width: 480px; }
table.eleven center { min-width: 530px; }
table.twelve center { min-width: 580px; }

table.one .panel center { min-width: 10px; }
table.two .panel center { min-width: 60px; }
table.three .panel center { min-width: 110px; }
table.four .panel center { min-width: 160px; }
table.five .panel center { min-width: 210px; }
table.six .panel center { min-width: 260px; }
table.seven .panel center { min-width: 310px; }
table.eight .panel center { min-width: 360px; }
table.nine .panel center { min-width: 410px; }
table.ten .panel center { min-width: 460px; }
table.eleven .panel center { min-width: 510px; }
table.twelve .panel center { min-width: 560px; }

.body .columns td.one,
.body .column td.one { width: 8.333333%; }
.body .columns td.two,
.body .column td.two { width: 16.666666%; }
.body .columns td.three,
.body .column td.three { width: 25%; }
.body .columns td.four,
.body .column td.four { width: 33.333333%; }
.body .columns td.five,
.body .column td.five { width: 41.666666%; }
.body .columns td.six,
.body .column td.six { width: 50%; }
.body .columns td.seven,
.body .column td.seven { width: 58.333333%; }
.body .columns td.eight,
.body .column td.eight { width: 66.666666%; }
.body .columns td.nine,
.body .column td.nine { width: 75%; }
.body .columns td.ten,
.body .column td.ten { width: 83.333333%; }
.body .columns td.eleven,
.body .column td.eleven { width: 91.666666%; }
.body .columns td.twelve,
.body .column td.twelve { width: 100%; }

td.offset-by-one { padding-left: 50px; }
td.offset-by-two { padding-left: 100px; }
td.offset-by-three { padding-left: 150px; }
td.offset-by-four { padding-left: 200px; }
td.offset-by-five { padding-left: 250px; }
td.offset-by-six { padding-left: 300px; }
td.offset-by-seven { padding-left: 350px; }
td.offset-by-eight { padding-left: 400px; }
td.offset-by-nine { padding-left: 450px; }
td.offset-by-ten { padding-left: 500px; }
td.offset-by-eleven { padding-left: 550px; }

td.expander {
  visibility: hidden;
  width: 0px;
  padding: 0 !important;
}

table.columns .text-pad,
table.column .text-pad {
  padding-left: 10px;
  padding-right: 10px;
}

table.columns .left-text-pad,
table.columns .text-pad-left,
table.column .left-text-pad,
table.column .text-pad-left {
  padding-left: 10px;
}

table.columns .right-text-pad,
table.columns .text-pad-right,
table.column .right-text-pad,
table.column .text-pad-right {
  padding-right: 10px;
}

/* Block Grid */

.block-grid {
  width: 100%;
  max-width: 580px;
}

.block-grid td {
  display: inline-block;
  padding:10px;
}

.two-up td {
  width:270px;
}

.three-up td {
  width:173px;
}

.four-up td {
  width:125px;
}

.five-up td {
  width:96px;
}

.six-up td {
  width:76px;
}

.seven-up td {
  width:62px;
}

.eight-up td {
  width:52px;
}

/* Alignment & Visibility Classes */

table.center, td.center {
  text-align: center;
}

h1.center,
h2.center,
h3.center,
h4.center,
h5.center,
h6.center {
  text-align: center;
}

span.center {
  display: block;
  width: 100%;
  text-align: center;
}

img.center {
  margin: 0 auto;
  float: none;
}

.show-for-small,
.hide-for-desktop {
  display: none;
}

/* Typography */

body, table.body, h1, h2, h3, h4, h5, h6, p, td {
  color: #222222;
  font-family: "Helvetica", "Arial", sans-serif;
  font-weight: normal;
  padding:0;
  margin: 0;
  text-align: left;
  line-height: 1.3;
}

h1, h2, h3, h4, h5, h6 {
  word-break: normal;
}

h1 {font-size: 40px;}
h2 {font-size: 36px;}
h3 {font-size: 32px;}
h4 {font-size: 28px;}
h5 {font-size: 24px;}
h6 {font-size: 20px;}
body, table.body, p, td {font-size: 14px;line-height:19px;}

p.lead, p.lede, p.leed {
  font-size: 18px;
  line-height:21px;
}

p {
  margin-bottom: 10px;
}

small {
  font-size: 10px;
}

a {
  color: #2ba6cb;
  text-decoration: none;
}

a:hover {
  color: #2795b6 !important;
}

a:active {
  color: #2795b6 !important;
}


h1 a,
h2 a,
h3 a,
h4 a,
h5 a,
h6 a {
  color: #2ba6cb;
}

h1 a:active,
h2 a:active,
h3 a:active,
h4 a:active,
h5 a:active,
h6 a:active {
  color: #2ba6cb !important;
}

/* Panels */

.panel {
  background: #f2f2f2;
  border: 1px solid #d9d9d9;
  padding: 10px !important;
}

.sub-grid table {
  width: 100%;
}

.sub-grid td.sub-columns {
  padding-bottom: 0;
}

/* Buttons */

table.button,
table.tiny-button,
table.small-button,
table.medium-button,
table.large-button {
  width: 100%;
  overflow: hidden;
}

table.button td,
table.tiny-button td,
table.small-button td,
table.medium-button td,
table.large-button td {
  display: block;
  width: auto !important;
  text-align: center;
  background: #2ba6cb;
  border: 1px solid #2284a1;
  color: #ffffff;
  padding: 8px 0;
}

table.tiny-button td {
  padding: 5px 0 4px;
}

table.small-button td {
  padding: 8px 0 7px;
}

table.medium-button td {
  padding: 12px 0 10px;
}

table.large-button td {
  padding: 21px 0 18px;
}

table.button td a,
table.tiny-button td a,
table.small-button td a,
table.medium-button td a,
table.large-button td a {
  font-weight: bold;
  text-decoration: none;
  font-family: Helvetica, Arial, sans-serif;
  color: #ffffff;
  font-size: 16px;
}

table.tiny-button td a {
  font-size: 12px;
  font-weight: normal;
}

table.small-button td a {
  font-size: 16px;
}

table.medium-button td a {
  font-size: 20px;
}

table.large-button td a {
  font-size: 24px;
}

table.button:hover td,
table.button:visited td,
table.button:active td {
  background: #2795b6 !important;
}

table.button:hover td a,
table.button:visited td a,
table.button:active td a {
  color: #fff !important;
}

table.button:hover td,
table.tiny-button:hover td,
table.small-button:hover td,
table.medium-button:hover td,
table.large-button:hover td {
  background: #2795b6 !important;
}

table.button:hover td a,
table.button:active td a,
table.button td a:visited,
table.tiny-button:hover td a,
table.tiny-button:active td a,
table.tiny-button td a:visited,
table.small-button:hover td a,
table.small-button:active td a,
table.small-button td a:visited,
table.medium-button:hover td a,
table.medium-button:active td a,
table.medium-button td a:visited,
table.large-button:hover td a,
table.large-button:active td a,
table.large-button td a:visited {
  color: #ffffff !important;
}

table.secondary td {
  background: #e9e9e9;
  border-color: #d0d0d0;
  color: #555;
}

table.secondary td a {
  color: #555;
}

table.secondary:hover td {
  background: #d0d0d0 !important;
  color: #555;
}

table.secondary:hover td a,
table.secondary td a:visited,
table.secondary:active td a {
  color: #555 !important;
}

table.success td {
  background: #5da423;
  border-color: #457a1a;
}

table.success:hover td {
  background: #457a1a !important;
}

table.alert td {
  background: #c60f13;
  border-color: #970b0e;
}

table.alert:hover td {
  background: #970b0e !important;
}

table.radius td {
  -webkit-border-radius: 3px;
  -moz-border-radius: 3px;
  border-radius: 3px;
}

table.round td {
  -webkit-border-radius: 500px;
  -moz-border-radius: 500px;
  border-radius: 500px;
}

/* Outlook First */

body.outlook p {
  display: inline !important;
}

/*  Media Queries */

@media only screen and (max-width: 600px) {

  table[class="body"] img {
    width: auto !important;
    height: auto !important;
  }

  table[class="body"] center {
    min-width: 0 !important;
  }

  table[class="body"] .container {
    width: 95% !important;
  }

  table[class="body"] .row {
    width: 100% !important;
    display: block !important;
  }

  table[class="body"] .wrapper {
    display: block !important;
    padding-right: 0 !important;
  }

  table[class="body"] .columns,
  table[class="body"] .column {
    table-layout: fixed !important;
    float: none !important;
    width: 100% !important;
    padding-right: 0px !important;
    padding-left: 0px !important;
    display: block !important;
  }

  table[class="body"] .wrapper.first .columns,
  table[class="body"] .wrapper.first .column {
    display: table !important;
  }

  table[class="body"] table.columns td,
  table[class="body"] table.column td {
    width: 100% !important;
  }

  table[class="body"] .columns td.one,
  table[class="body"] .column td.one { width: 8.333333% !important; }
  table[class="body"] .columns td.two,
  table[class="body"] .column td.two { width: 16.666666% !important; }
  table[class="body"] .columns td.three,
  table[class="body"] .column td.three { width: 25% !important; }
  table[class="body"] .columns td.four,
  table[class="body"] .column td.four { width: 33.333333% !important; }
  table[class="body"] .columns td.five,
  table[class="body"] .column td.five { width: 41.666666% !important; }
  table[class="body"] .columns td.six,
  table[class="body"] .column td.six { width: 50% !important; }
  table[class="body"] .columns td.seven,
  table[class="body"] .column td.seven { width: 58.333333% !important; }
  table[class="body"] .columns td.eight,
  table[class="body"] .column td.eight { width: 66.666666% !important; }
  table[class="body"] .columns td.nine,
  table[class="body"] .column td.nine { width: 75% !important; }
  table[class="body"] .columns td.ten,
  table[class="body"] .column td.ten { width: 83.333333% !important; }
  table[class="body"] .columns td.eleven,
  table[class="body"] .column td.eleven { width: 91.666666% !important; }
  table[class="body"] .columns td.twelve,
  table[class="body"] .column td.twelve { width: 100% !important; }

  table[class="body"] td.offset-by-one,
  table[class="body"] td.offset-by-two,
  table[class="body"] td.offset-by-three,
  table[class="body"] td.offset-by-four,
  table[class="body"] td.offset-by-five,
  table[class="body"] td.offset-by-six,
  table[class="body"] td.offset-by-seven,
  table[class="body"] td.offset-by-eight,
  table[class="body"] td.offset-by-nine,
  table[class="body"] td.offset-by-ten,
  table[class="body"] td.offset-by-eleven {
    padding-left: 0 !important;
  }

  table[class="body"] table.columns td.expander {
    width: 1px !important;
  }

  table[class="body"] .right-text-pad,
  table[class="body"] .text-pad-right {
    padding-left: 10px !important;
  }

  table[class="body"] .left-text-pad,
  table[class="body"] .text-pad-left {
    padding-right: 10px !important;
  }

  table[class="body"] .hide-for-small,
  table[class="body"] .show-for-desktop {
    display: none !important;
  }

  table[class="body"] .show-for-small,
  table[class="body"] .hide-for-desktop {
    display: inherit !important;
  }
}

  </style>
  <style>
      table.body, body {
          background: #f0f0f0;
      }
    .callout .wrapper {
      padding-bottom: 20px;
    }

    .callout .panel {
      background: #ECF8FF;
      border-color: #b9e5ff;
    }

    .top-message {
      background: #2785d3;
    }

      .top-message .wrapper {
          padding: 0px 0 0;
      }

      .top-message table.columns td {
          padding: 0 0 0px;
          color: #47AEE9;
          font-size: 9px;
      }

    .header {
      background: #46bcff;
      border-bottom: 1px solid #2785d3;
    }

      .container {
          padding-bottom: 28px;
      }

      .insight {
          background: #9dd767;
          border-top: 5px solid #5fac1c;
          border-bottom: 2px solid #9dd767;
          margin-bottom: 14px;
      }

      .insight td h6 a {
          color: #fff !important;
          font-weight: bold;
          font-size: 18px;
      }

      .insight td h6 a:hover {
          color: #417505 !important;
      }

      .insight .insight-body {
          background: #fff;
      }

      .insight .insight-body td {
          color: #222;
          font-size: 14px;
          line-height: 18px;
          padding-top: 10px;
      }

      .insight .insight-footer {
          margin: 0;
          background: #fff;
          padding: 4px 10px;
          border-top: 1px solid #dbdbdb;
      }

      .insight-footer a {
          color: #46bcff;
      }

      .insight .insight-footer td.sub-columns {
          padding: 0;
          color: #999;
          font-size: 13px;
      }

      .insight .insight-footer .permalink a {
          color: #999;
      }

      .insight .insight-footer .permalink img {
          margin-right: 5px;
      }

      .insight .insight-footer .date {
          text-align: right;
      }

      /* Insight colors */

      .insight-pea {
          border-top-color: #5fac1c;
          border-bottom-color: #9dd767;
          background: #9dd767;
      }

      .insight-salmon {
          border-top-color: #DA6070;
          border-bottom-color: #FC939E;
          background: #FC939E;
      }

      .insight-creamsicle {
          border-top-color: #FF8F41;
          border-bottom-color: #FFBB4E;
          background: #FFBB4E;
      }

      .insight-sepia {
          border-top-color: #A19F8B;
          border-bottom-color: #C0BDAF;
          background: #C0BDAF;
      }

      .insight-purple {
          border-top-color: #8E69C2;
          border-bottom-color: #B690E2;
          background: #B690E2;
      }

      .insight-mint {
          border-top-color: #24B98F;
          border-bottom-color: #41DAB3;
          background: #41DAB3;
      }

      .insight-bubblegum {
          border-top-color: #B3487C;
          border-bottom-color: #F576B5;
          background: #F576B5;
      }

      .insight-seabreeze {
          border-top-color: #198A9C;
          border-bottom-color: #44C9D7;
          background: #44C9D7;
      }

      .insight-dijon {
          border-top-color: #C59301;
          border-bottom-color: #E4BF28;
          background: #E4BF28;
      }

      .insight-sandalwood {
          border-top-color: #D13A0A;
          border-bottom-color: #FD8560;
          background: #FD8560;
      }

      .insight-caramel {
          border-top-color: #9E5E14;
          border-bottom-color: #DD814B;
          background: #DD814B;
      }

    table.footer {
          border-top: 1px solid #dbdbdb;
          color: #999;
          margin-top: 14px;
    }

      table.footer a {
          color: #46bcff;
      }

      table.footer td.sub-columns {
          color: #999;
          font-size: 12px;
          line-height: 16px;
          padding-right: 0;
      }

      table.footer .links {
          text-align: center;
          vertical-align: middle;
      }

      table.footer .links img {
    float: none;
    display: inline;
          padding: 0 10px;
          height: 20px;
      }

      table.footer .motto {
          text-align: right;
      }
  </style>
</head>
<body>
  <table class="body">
    <tr>
      <td class="center" align="center" valign="top">
        <center>

          <table class="row top-message">
            <tr>
              <td class="center" align="center">
                <center>

                  <table class="container">
                    <tr>
                      <td class="wrapper last">

                        <table class="twelve columns" align="center">
                          <tr>
                              <td class="center">
                                  <center>Today’s ThinkUp insights</center>
                            </td>
                            <td class="expander"></td>
                          </tr>
                        </table>

                      </td>
                    </tr>
                  </table>

                </center>
              </td>
            </tr>
          </table>

            <table class="row header">
            <tr>
              <td class="center" align="center">
                <center>

                  <table class="container">
                    <tr>
                      <td class="wrapper last">

                        <table class="twelve columns" align="center">
                          <tr>
                              <td class="center">
                                  <center><img class="center" src="http://capndesign.com/scratch/tu-icons/thinkup-logo-header.png" alt="ThinkUp" width="70" height="19"></center>
                            </td>
                            <td class="expander"></td>
                          </tr>
                        </table>

                      </td>
                    </tr>
                  </table>

                </center>
              </td>
            </tr>
          </table>
<br>
<br>
          <table class="container">
            <tr>
              <td>

<table class="row">
  <tr>
    <td class="wrapper last">
      <table class="twelve columns">
        <tr>
          <td class="center">
              <h6 class="center">Today’s Insights</h6>
          </td>
          <td class="expander"></td>
        </tr>
      </table>

    </td>
  </tr>
</table>
{foreach from=$insights item=insight}
{capture name=permalink assign="permalink"}{$application_url}?u={$insight->instance->network_username}&amp;n={$insight->instance->network}&amp;d={$insight->date|date_format:'%Y-%m-%d'}&amp;s={$insight->slug}{/capture}
{math equation="x % 10" x=$i->id assign=random_color_num}
{if $i->slug eq 'posts_on_this_day_popular_flashback' | 'favorites_year_ago_flashback'}
  {assign var='color' value='sepia'}{assign var='color_dark' value='A19F8B'}{assign var='color' value='C0BDAF'}
{elseif $random_color_num eq '0'}
  {assign var='color_name' value='pea'}{assign var='color_dark' value='5fac1c'}{assign var='color' value='9dd767'}
{elseif $random_color_num eq '1'}
  {assign var='color_name' value='creamsicle'}{assign var='color_dark' value='FF8F41'}{assign var='color' value='FFBB4E'}
{elseif $random_color_num eq '2'}
  {assign var='color_name' value='purple'}{assign var='color_dark' value='8E69C2'}{assign var='color' value='B690E2'}
{elseif $random_color_num eq '3'}
  {assign var='color_name' value='mint'}{assign var='color_dark' value='24B98F'}{assign var='color' value='41DAB3'}
{elseif $random_color_num eq '4'}
  {assign var='color_name' value='bubblegum'}{assign var='color_dark' value='B3487C'}{assign var='color' value='F576B5'}
{elseif $random_color_num eq '5'}
  {assign var='color_name' value='seabreeze'}{assign var='color_dark' value='198A9C'}{assign var='color' value='44C9D7'}
{elseif $random_color_num eq '6'}
  {assign var='color' value='dijon'}{assign var='color_dark' value='C59301'}{assign var='color' value='E4BF28'}
{elseif $random_color_num eq '7'}
  {assign var='color' value='sandalwood'}{assign var='color_dark' value='D13A0A'}{assign var='color' value='FD8560'}
{elseif $random_color_num eq '8'}
  {assign var='color' value='caramel'}{assign var='color_dark' value='9E5E14'}{assign var='color' value='DD814B'}
{else}
  {assign var='color' value='salmon'}{assign var='color_dark' value='DA6070'}{assign var='color' value='FC939E'}
{/if}

<table class="row insight insight-{$color}">
  <tr>
    <td class="wrapper last">

      <table class="twelve columns insight-header">
        <tr>
          <td class="text-pad">
              <h6><a href="{$permalink}">{$insight->headline|replace:":":""}</a></h6>
          </td>
          <td class="expander"></td>
        </tr>
        </table>
{if $insight->text ne ''}
      <table class="twelve columns insight-body">
        <tr>
          <td class="text-pad">
              {$insight->text|strip_tags:false}
          </td>
          <td class="expander"></td>
        </tr>
        </table>
{/if}
        <table class="twelve columns">
        <tr>
          <td class="insight-footer sub-grid">
              <table>
                  <tr>
                      <td class="six sub-columns permalink">
                          <img src="{$application_url}assets/img/icons/twitter-gray.png" alt="twitter"><a href="{$permalink}">Jan 12</a>
                      </td>
                      <td class="six sub-columns date">
                          <a href="{$permalink}">View this insight</a>
                      </td>
                  </tr>
              </table>
          </td>
          <td class="expander"></td>
        </tr>
      </table>
    </td>
  </tr>
</table>
{/foreach}

<table class="row">
  <tr>
    <td class="wrapper last">
      <table class="twelve columns">
        <tr>
          <td class="center">
              <small class="center"><a href="{$unsub_url}">Change your email preferences</a></small>
          </td>
          <td class="expander"></td>
        </tr>
      </table>

    </td>
  </tr>
</table>


              <!-- container end below -->
              </td>
            </tr>
          </table>

          <table class="row footer">
            <tr>
              <td class="center" align="center">
                <center>

                  <table class="container">
                    <tr>
                      <td class="wrapper last">

                        <table class="twelve columns">
                          <tr>
                          <td class="footer sub-grid">
                              <table>
                                  <tr>
                                      <td class="three sub-columns privacy">
                                    &copy;2014 ThinkUp, LLC<br>
                                        <a class="privacy" href="https://github.com/ThinkUpLLC/policy">Privacy and stuff</a>
                                      </td>
                                      <td class="six sub-columns links">
                                          <a href="https://twitter.com/thinkup"><img src="{$application_url}assets/img/icons/twitter-blue.png" width="20" height="20"/></a><a href="https://facebook.com/thinkupapp"><img src="{$application_url}assets/img/icons/facebook-blue.png" width="20" height="20"/></a><a href="https://plus.google.com/109397312975756759279"><img src="{$application_url}assets/img/icons/google-plus-blue.png" width="20" height="20"/></a><a href="https://github.com/ginatrapani/ThinkUp"><img src="{$application_url}assets/img/icons/github-blue.png" width="20" height="20"/></a>
                                      </td>
                                      <td class="three sub-columns motto">
                                          It is nice to be nice.
                                      </td>
                                  </tr>
                              </table>
                          </td>
                            <td class="expander"></td>
                          </tr>
                        </table>

                      </td>
                    </tr>
                  </table>

                </center>
              </td>
            </tr>
          </table>


        </center>
      </td>
    </tr>
  </table>
</body>
</html>