---
layout: handbook-page-toc
title: "Importing Illustrator Files into After Effects"
description: A guide to what to look for when importing Illustrator (.ai) files into After Effects (.aep)
twitter_image: '/images/tweets/handbook-marketing.png'
twitter_site: "@gitlab"
twitter_creator: "@gitlab"
---

The following is an overview of how to prepare an Illustrator file for import into After Effects for animation. 

## Video Explanation

<figure class="video_container">
    <iframe src="https://www.youtube.com/embed/9IippiMo0-8" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

## Checklist
* One Artboard (1920x1080px)
* Each Element to be animated is on an individual Layer


##### Artboard
* After Effects will only display the content within the first artboard, ignoring the rest. Therefore, place all elements you wish to be imported into After Effects into the first artboard, and adjust its settings to **1920x1080px**. If there are multiple artboards, stack the Elements on the first artboard, or export each artboard into individual files, then remove any additional artboards.  

##### Layers
* It is preferable to have each individual element (icon, shape, or text) on an individual layer, as After Effects pulls from the layer level only. This is different from the typical approach of having each element within a seperate group, but containing all those groups on the same layer. This may require some thought, as perhaps there are multiple elements to an overall shape that will require motion. The safest way to be sure that element is free for animation is to place it on its own individual layer. If there are simple vector paths within groups as part of the layer, they can be broken down into groups again within After Effects. 
