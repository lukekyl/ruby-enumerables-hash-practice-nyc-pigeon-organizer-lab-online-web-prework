def nyc_pigeon_organizer(data)
  org_data = {}
  data.each { |attribute, category|
    category.each {|subcat, arrays|
      arrays.each {|name|
        if org_data[name].nil?
          org_data[name] = attribute
        end
      }
    }
  }
  org_data.each { |name|
    data.each { |attribute, category|
      
      category.each {|subcat, arrays|
        arrays.each {|pigeon_name|
         
           org_data[name][attribute] = category
         # org_data[name][attribute] = category.to_s
         
        }
      }
    
    }
  }
  p org_data
end
