---
title: Table Markdown Example
noindex: true
---

## Normal Markdown   

| Month | Saving |
| :---- | :----- |
| January | $100 |
| February | $80 |

```
| Month | Saving |
| :---- | :----- |
| January | $100 |
| February | $80 |
```

## Example of HTML table with controlled widths

The usable space w/in the handbook for content is roughly 700 px wide, if you try to exceed that the information will bleed over into the Table of Content space and be unreadable. 

At least one of the rows has to have the column width explicitly defined. You can't use normal HTML definition for width or style that would live in the `<table>` tag. 

<table>
  <tr>
    <th width="230">Month</th>
    <th width="80">Savings</th>
  </tr>
  <tr>
    <td>January</td>
    <td>$100</td>
  </tr>
  <tr>
    <td>February</td>
    <td>$80</td>
  </tr>
  <tr>
    <td>February</td>
    <td>$80</td>
  </tr>
  <tr>
    <td>February</td>
    <td>$80</td>
  </tr>
  <tr>
    <td>February</td>
    <td>$80</td>
  </tr>
</table>



```
<table>
  <tr>
    <th width="230">Month</th>
    <th width="80">Savings</th>
  </tr>
  <tr>
    <td>January</td>
    <td>$100</td>
  </tr>
  <tr>
    <td>February</td>
    <td>$80</td>
  </tr>
  <tr>
    <td>February</td>
    <td>$80</td>
  </tr>
  <tr>
    <td>February</td>
    <td>$80</td>
  </tr>
  <tr>
    <td>February</td>
    <td>$80</td>
  </tr>
</table>
```


