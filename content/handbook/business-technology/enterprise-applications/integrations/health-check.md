---

title: "Enterprise Applications Integrations Health Check"
---

<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

<style>
.wrapper {
  max-width: 2000px
}

.health-red {
    color: #ae1800;
}
.health-orange {
    color: #d99530;
}
.health-green {
    color: #108548;
}
.health-scores {
    font-size: 2em;
    width: 400px;
}
.system-score {
    font-weight: 500;
    font-size: 1.5em;
}
.checked::before {
    content: "\2611";
    font-size: 1.8em;
    position: relative;
    bottom: 2px;
}
.unchecked::before {
    content: "\2610";
    font-size: 1.8em;
    position: relative;
    bottom: 2px;
}
.grid-health-matrix {
  display: grid;
  grid-template-columns: repeat(10, minmax(0, 1fr));
  background-color:#ffffff;
  border-right: 1px solid #ddd;
  overflow-x: auto;
  min-width: 1000px;
}

.grid-health-matrix-wrapper {
  max-width: 100%;
  overflow-x: auto;
}
.item-health-matrix:nth-child(-n+2) {
  border-top: 1px solid #ddd;
}
.item-health-matrix:nth-child(1) {
  border-top: 0px;
}
.item-health-matrix {
  background-color: #ffffff;
  border-bottom: 1px solid #ddd;
  border-left: 1px solid #ddd;
  font-size: 15px;
  padding: 3px;
  text-align: center;
  font-family: "Source Sans Pro", sans-serif;
  min-height: 45px;
  display: flex;
  align-items: center;
  justify-content: center;
}
.grid-empty {
  border-left: 0px;
  border-bottom:0px;
}
.grid-empty1 {
  border-left: 0px;
  border-top:0px;
}

.swatch {
  display: table-cell;
  text-align: center;
  vertical-align: middle;
  width: 150px;
  height: 50px;
  border: 1px solid #ddd;
  margin-bottom: 5px;
}

.review-not-started {
  background-color: white;
}

.review-in-progress {
  background-color: #f5d9a8;
}

.review-complete {
  background-color: #c3e6cd;
}
</style>







## Framework

The presence of the following characteristics have been identified as important indicators of the general health of an integration.

- **Existence of an integration**
- **Logging**
- **Monitoring & Alerting**
- **Documentation**
- **Error handling**
- **Queueing and retry**
- **Meets security standards**

The presence of each of the above characteristics is worth 1 point for a top score of 7. Those scores then map to a traffic light health status.
<p class="health-scores">
Not assessed: Black<br/>
0-2: <span class="health-red">Red</span><br/>  
3-5: <span class="health-orange">Orange</span><br/>
6-7: <span class="health-green">Green</span><br/>
</p>

## System Scorecards

The color of the row indicates whether the system review is in progress or complete. The checkboxes all start as unchecked and will be checked if the review is complete and the system meets the criteria for that health item. Criteria for each health check are still in development and will be posted at a later date.

<div class="swatch review-not-started">
  Review not started
</div>
<br/>
<div class="swatch review-in-progress">
  Review in progress
</div>
<br/>
<div class="swatch review-complete">
  Review complete
</div>

### Finance System Integrations

<div class="grid-health-matrix-wrapper">
  <div class="grid-health-matrix">
    <div class="item-health-matrix grid-empty"></div>
    <div class="item-health-matrix" style="grid-column: 2/11"><b>Indicators</b></div>
    <div class="item-health-matrix grid-empty1"></div>
    <div class="item-health-matrix"><b>Review Status</b></div>
    <div class="item-health-matrix"><b>Score</b></div>
    <div class="item-health-matrix"><b>Existence of an integration</b></div>
    <div class="item-health-matrix"><b>Logging</b></div>
    <div class="item-health-matrix"><b>Monitoring & Alerting</b></div>
    <div class="item-health-matrix"><b>Docs</b></div>
    <div class="item-health-matrix"><b>Error handling</b></div>
    <div class="item-health-matrix"><b>Queueing and retry</b></div>
    <div class="item-health-matrix"><b>Meets architecture standards</b></div>
    <div class="item-health-matrix"><b>Zuora <br/><><br/> SFDC</b></div>
    <div class="item-health-matrix">Review not started</div>
    <div class="item-health-matrix">2</div>
    <div class="item-health-matrix"><span class="checked"></span></div>
    <div class="item-health-matrix"><span class="unchecked"></span></div>
    <div class="item-health-matrix"><span class="unchecked"></span></div>
    <div class="item-health-matrix"><span class="unchecked"></span></div>
    <div class="item-health-matrix"><span class="unchecked"></span></div>
    <div class="item-health-matrix"><span class="unchecked"></span></div>
    <div class="item-health-matrix"><span class="unchecked"></span></div>
    <div class="item-health-matrix"><b>Zuora <br/><><br/> CustomersDot</b></div>
    <div class="item-health-matrix">Review not started</div>
    <div class="item-health-matrix">2</div>
    <div class="item-health-matrix"><span class="checked"></span></div>
    <div class="item-health-matrix"><span class="unchecked"></span></div>
    <div class="item-health-matrix"><span class="unchecked"></span></div>
    <div class="item-health-matrix"><span class="unchecked"></span></div>
    <div class="item-health-matrix"><span class="unchecked"></span></div>
    <div class="item-health-matrix"><span class="unchecked"></span></div>
    <div class="item-health-matrix"><span class="unchecked"></span></div>
    <div class="item-health-matrix"><b>Zuora Revenue <br/><><br/> NetSuite</b></div>
    <div class="item-health-matrix">In Development</div>
    <div class="item-health-matrix">0</div>
    <div class="item-health-matrix"><span class="unchecked"></span></div>
    <div class="item-health-matrix"><span class="unchecked"></span></div>
    <div class="item-health-matrix"><span class="unchecked"></span></div>
    <div class="item-health-matrix"><span class="unchecked"></span></div>
    <div class="item-health-matrix"><span class="unchecked"></span></div>
    <div class="item-health-matrix"><span class="unchecked"></span></div>
    <div class="item-health-matrix"><span class="unchecked"></span></div>
    <div class="item-health-matrix"><b>Zuora Billing <br/><><br/> NetSuite</b></div>
    <div class="item-health-matrix">In Development</div>
    <div class="item-health-matrix">0</div>
    <div class="item-health-matrix"><span class="unchecked"></span></div>
    <div class="item-health-matrix"><span class="unchecked"></span></div>
    <div class="item-health-matrix"><span class="unchecked"></span></div>
    <div class="item-health-matrix"><span class="unchecked"></span></div>
    <div class="item-health-matrix"><span class="unchecked"></span></div>
    <div class="item-health-matrix"><span class="unchecked"></span></div>
    <div class="item-health-matrix"><span class="unchecked"></span></div>
    <div class="item-health-matrix"><b>Stripe <br/><><br/> Zuora</b></div>
    <div class="item-health-matrix">Review not started</div>
    <div class="item-health-matrix">1</div>
    <div class="item-health-matrix"><span class="checked"></span></div>
    <div class="item-health-matrix"><span class="unchecked"></span></div>
    <div class="item-health-matrix"><span class="unchecked"></span></div>
    <div class="item-health-matrix"><span class="unchecked"></span></div>
    <div class="item-health-matrix"><span class="unchecked"></span></div>
    <div class="item-health-matrix"><span class="unchecked"></span></div>
    <div class="item-health-matrix"><span class="unchecked"></span></div>
    <div class="item-health-matrix"><b>CustomersDot <br/><><br/> SFDC</b></div>
    <div class="item-health-matrix">Review not started</div>
    <div class="item-health-matrix">1</div>
    <div class="item-health-matrix"><span class="checked"></span></div>
    <div class="item-health-matrix"><span class="unchecked"></span></div>
    <div class="item-health-matrix"><span class="unchecked"></span></div>
    <div class="item-health-matrix"><span class="unchecked"></span></div>
    <div class="item-health-matrix"><span class="unchecked"></span></div>
    <div class="item-health-matrix"><span class="unchecked"></span></div>
    <div class="item-health-matrix"><span class="unchecked"></span></div>
    <div class="item-health-matrix"><b>Zuora <br/><><br/> Avalara</b></div>
    <div class="item-health-matrix">Review not started</div>
    <div class="item-health-matrix">0</div>
    <div class="item-health-matrix"><span class="unchecked"></span></div>
    <div class="item-health-matrix"><span class="unchecked"></span></div>
    <div class="item-health-matrix"><span class="unchecked"></span></div>
    <div class="item-health-matrix"><span class="unchecked"></span></div>
    <div class="item-health-matrix"><span class="unchecked"></span></div>
    <div class="item-health-matrix"><span class="unchecked"></span></div>
    <div class="item-health-matrix"><span class="unchecked"></span></div>
    <div class="item-health-matrix"><b>Zuora <br/><><br/> Snowflake</b></div>
    <div class="item-health-matrix">Review not started</div>
    <div class="item-health-matrix">0</div>
    <div class="item-health-matrix"><span class="unchecked"></span></div>
    <div class="item-health-matrix"><span class="unchecked"></span></div>
    <div class="item-health-matrix"><span class="unchecked"></span></div>
    <div class="item-health-matrix"><span class="unchecked"></span></div>
    <div class="item-health-matrix"><span class="unchecked"></span></div>
    <div class="item-health-matrix"><span class="unchecked"></span></div>
    <div class="item-health-matrix"><span class="unchecked"></span></div>
    <div class="item-health-matrix health-orange review-in-progress"><b>BambooHR <br/><><br/> Expensify</b></div>
    <div class="item-health-matrix review-in-progress">In Review</div>
    <div class="item-health-matrix review-in-progress">5</div>
    <div class="item-health-matrix review-in-progress"><span class="checked"></span></div>
    <div class="item-health-matrix review-in-progress"><span class="checked"></span></div>
    <div class="item-health-matrix review-in-progress"><span class="checked"></span></div>
    <div class="item-health-matrix review-in-progress"><span class="unchecked"></span></div>
    <div class="item-health-matrix review-in-progress"><span class="checked"></span></div>
    <div class="item-health-matrix review-in-progress"><span class="unchecked"></span></div>
    <div class="item-health-matrix review-in-progress"><span class="checked"></span></div>
    <div class="item-health-matrix health-orange review-in-progress"><b>BambooHR <br/><><br/> NetSuite</b></div>
    <div class="item-health-matrix review-in-progress">In Review</div>
    <div class="item-health-matrix review-in-progress">5</div>
    <div class="item-health-matrix review-in-progress"><span class="checked"></span></div>
    <div class="item-health-matrix review-in-progress"><span class="checked"></span></div>
    <div class="item-health-matrix review-in-progress"><span class="checked"></span></div>
    <div class="item-health-matrix review-in-progress"><span class="unchecked"></span></div>
    <div class="item-health-matrix review-in-progress"><span class="checked"></span></div>
    <div class="item-health-matrix review-in-progress"><span class="unchecked"></span></div>
    <div class="item-health-matrix review-in-progress"><span class="checked"></span></div>
  </div>
</div>
