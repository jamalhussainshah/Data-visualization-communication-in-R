###  gganimate Beautiful Animation in R
This project is created by jamal hussain shah 

 how to create animation in R using the gganimate R package.

gganimate is an extension of the ggplot2 package for creating animated ggplots. It provides a range of new functionality that can be added to the plot object in order to customize how it should change with time.

Key features of gganimate:

    transitions: you want your data to change
    views: you want your viewpoint to change
    shadows: you want the animation to have memory

Save animation

If you need to save the animation for later use you can use the anim_save() function.

It works much like ggsave() from ggplot2 and automatically grabs the last rendered animation if you do not specify one directly.

![shadow_mark](https://user-images.githubusercontent.com/95676591/175807400-dee737f8-a145-4c3f-b256-1b5a2a3185c6.gif)
![let-data-gradually-appear-keep-points](https://user-images.githubusercontent.com/95676591/175807404-551f4fcb-62bd-413e-ae6b-d95a2eb64706.gif)
