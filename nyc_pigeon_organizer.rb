def nyc_pigeon_organizer(data)
  org_data = {}
  data.each { |attribute, category|
    category.each {|subcat, arrays|
      arrays.each {|name|
        if org_data[name].nil?
          org_data[name] = {}
        end
      }
    }
  }
  org_data.each { |name|
    data.each { |attribute, category|
      org_data[name] = attribute
      category.each {|subcat, arrays|
        arrays.each {|pigeon_name|
         if name == pigeon_name
           org_data[name] = attribute
         # org_data[name][attribute] = category.to_s
         end
        }
      }
    }
  }
  p org_data
end
