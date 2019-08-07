def nyc_pigeon_organizer(data)
  org_data = {}
  data.each { |attribute, category|
    category.each {|subcat, arrays|
      arrays.each {|name|
        if org_data[name].nil?
          org_data[name][category]
        end
      }
    }
  }
  p org_data
end
