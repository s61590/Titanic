The "titanic" data set has already been wrangled and defined.

1) Plotting the distibution of sexes within each of the 3 classes 
(1st, 2nd, 3rd) of the ship with a bar graph. 

ggplot(titanic, aes(x = Pclass, fill = Sex)) +
  geom_bar(position = "dodge")

2) Taking the previous graph and adding a facet grid layer that corresponds 
to the binary variable of survival. Now there will be 2 graphs, one for 
passengers who survived and one for passangers who did not survive. 
Like the original graph, both graphs show the distribution of sexes 
within each of the 3 classes

ggplot(titanic, aes(x = Pclass, fill = Sex)) +
  geom_bar(position = "dodge") +
  facet_grid(. ~ Survived)

3) Define an object for position jitterdodge to create a scatter plot.

posn.jd <- position_jitterdodge(0.5, 0, 0.6)

4) Incorporating the position object into the plot in Step 2. Now the bar
grap in Step 2 is transformed into a scatter plot.

ggplot(titanic, aes(x = Pclass, y = Age, color = Sex)) +
  geom_point(size = 3, alpha = 0.5, position = posn.jd) +
  facet_grid(. ~ Survived)