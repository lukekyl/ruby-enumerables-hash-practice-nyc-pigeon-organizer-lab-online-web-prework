def nyc_pigeon_organizer(data)
  org_data = {}
  data.each { |attribute, category|
    category.each {|subcat, arrays|
      arrays.each {|name|
        if org_data[name].nil?
          org_data[name] = {}
          org_data[name][attribute] = []
        else
          org_data[name][attribute] = []
        end
      }
    }
  }
  
  org_data.each { |names, categories|
    categories.each {|subcategories, array|
      data.each { |attribute, category|
        category.each { |subcat, arrays|
          arrays.each { |name|
            
            if name == names
            
          }
        }
      }
    }
  }
  
  p org_data
end
