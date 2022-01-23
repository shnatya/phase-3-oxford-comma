require "pry"
def oxford_comma(array)
    message = if array.length == 1
                array.join
            elsif array.length == 2
                array.join(" and ")
            else array.length >= 3
                last_el = array.last
                final_array = array.map.with_index do |word|
                    if word == last_el
                        "and " + word
                    else 
                        word + ", "
                    end
                end
                final_array.join
            end  
    message
end