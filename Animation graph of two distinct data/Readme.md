### Animation graph of two distinct data
Transition between several distinct stages of the data
![transition_states](https://user-images.githubusercontent.com/95676591/175808007-1412fcce-5a03-4d19-820b-4f4af0af7156.gif)

 how to create animation in R using the gganimate R package.

gganimate is an extension of the ggplot2 package for creating animated ggplots. It provides a range of new functionality that can be added to the plot object in order to customize how it should change with time.

Key features of gganimate:

    transitions: you want your data to change
    views: you want your viewpoint to change
    shadows: you want the animation to have memory


Save animation

If you need to save the animation for later use you can use the anim_save() function.

It works much like ggsave() from ggplot2 and automatically grabs the last rendered animation if you do not specify one directly.
