# Function 5: creates unique value map
# This function is used to create a map that shows which is the most voted
# political group within each contry

get_map <- function(data, fill_by=NULL, legend = "", title =""){
  #The arguments are:
  #data: dataframe with the polygon data and other data
  #fill_by: The column that with the desired categories
  #legend: string to be used as legend of the map
  #title: string to be used as title of map

  p <- ggplot(data = data) +
    geom_sf(aes(fill = fill_by)) +
    labs(fill = legend) +
    ggtitle(title) +
    theme(plot.title = element_text(hjust = 0.5, face = "bold")) +
    coord_sf(crs = "+init=epsg:3035", xlim = c(2500000, 6600000), ylim = c(5500000, 1200000), expand = FALSE)

  #A map is created using dataframe assigned to "data" plus the geometries of entries assigned to "fill_by"
  # ggtitle creates the title of the map using the text from the argument title and the title is in bold
  # coord_sf sets an Azimuthalequal area projection for the map and the extent of the map
  # are set by xlim and ylim


  return(p)
}
