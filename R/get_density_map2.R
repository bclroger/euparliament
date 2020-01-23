# Function 7: Similar to function6, but this one allows the use of 2 gradients in the same scale

# By using the "scale_fill_gradient2" funsction, it is possible to establish a mid point around 0
# in the gradient scale, which is important to observe in the map places where there were gains or losses
# of seats for any given group in a given country

get_density_map2 <- function(data, fill_by, legend = "", title ="", gradmin = -32,
                             gradmax = 42, gradnum = 4, colors = c("#a32424","#FFFFFF","#224d77")){
  #The arguments are:
  #data: dataframe with the polygon data and other data
  #fill_by: The column that with the desired info to be shown in the map
  #region: name of the region to be displayed byt the map. If empty, world map is shown
  #legend: string to be used as legend of the map
  #title: string to be used as title of map
  #colors: the color gradient of "fill_by" info. Default: "#a32424",#FFFFFF","#224d77"
  #gradmin: lowest value shown in the gradient scale. Default: -32
  #gradmax: highest value shown in the gradient scale. Default: 42
  #grandnum: number of intervals shown in the gradient scale. Default: 4


  #Creating the breaks:
  gradbreak <- seq(from = gradmin, to = gradmax, by = ((gradmax - gradmin)/gradnum))
  #This creates a vector from the lowest value chosen to be shown in the gradient scale
  # to the highest chosen value with the desired number number of intervals. The vector
  # goes from gradmin to gradmax in a sequence of numbers increasing by equal numbers.
  # This vector is later used as an input to create the gradient scale.


  # Create world plot:
  p <- ggplot(data = data) +
    geom_sf(aes(fill = fill_by)) +
    labs(fill = legend) +
    scale_fill_gradient2(low = colors[1], mid = colors[2], high = colors[3], midpoint = 0, breaks = gradbreak,
                         labels = gradbreak, limits = c(gradmin, gradmax), name = legend) +
    ggtitle(title) +
    theme(plot.title = element_text(hjust = 0.5, face = "bold")) +
    coord_sf(crs = "+init=epsg:3035", xlim = c(2500000, 6600000), ylim = c(5500000, 1200000), expand = FALSE)

  #A map is created using dataframe assigned to "data" plus the geometries of entries assigned to "fill_by"
  #shown using the color gradient assigned to "color" and using the text assigned to "legend"
  # The colors of the gradient are set by the values in argument vector "colors"
  # A mid point of 0 in the gradient is created using color[2]
  # ggtitle creates the title of the map using the text from the argument title and the title is in bold
  # coord_sf sets an Azimuthalequal area projection for the map and the extent of the map
  # are set by xlim and ylim


  return(p)
}

