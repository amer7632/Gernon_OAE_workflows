#modified from a script of Sabin Zahirovic
#declare our different ridge names
declare -a arr=("Afr-Ant" "Afr-Mad" "Aus-Ant" "Aus-Mol" "Central_Atlantic" \
                "Equatorial_Atlantic" "Iberian_Atlantic" "Ind-Aus-Ant" \
                "Ind-Mad" "Labrador_sea" "North_Atlantic" "Southern_Atlantic")

#set savefoloder
output_folder=/Users/andrew/Documents/Data/Gernon_shallow_ridges/ridge_polygons/csv_results

#loop through different ridges, NB the " " are very important
for i in "${arr[@]}"
do
  echo "$i"
  age=0
  #loop through ages
  while (( $age <=230))
  do
    input_table=/Users/andrew/Documents/Data/Gernon_shallow_ridges/timestep_tables/${age}_Ma_GLOBAL.csv

    arc_polygon=/Users/andrew/Documents/Data/Gernon_shallow_ridges/ridge_polygons/gmt/${i}_${age}.gmt
    gmt select ${input_table} -F${arc_polygon} -fg -V > ${output_folder}/${i}_${age}_CrustalVol.csv
    age=$(( $age + 1 ))

  done
done

#delete empty files
find . -size 0c -delete
