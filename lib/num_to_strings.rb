def num_to_strings string

  qty_1s_to19s = {
      0 =>'zero', 1=>'one', 2=>'two', 3=>'three', 4=>'four', 5=>'five', 6=>'six', 7=>'seven', 8=>'eight', 9=>'nine', 10=>'ten', 11=>'eleven', 12=>'twelve', 13=>'thirteen', 14=>'fourteen', 15=>'fifteen', 16=>'sixteen', 17=>'seventeen', 18=>'eighteen', 19=>'nineteen'
   }

   qty_20s_to_90s = {
     2=>'twenty', 3=>'thirty', 4=>'forty', 5=>'fifty', 6=>'sixty', 7=>'seventy', 8=>'eighty', 9=>'ninety'
   }

   number = string.gsub(/[^0-9]/,"").to_i
   first  = number.div(10)
   second = number % 10

   string = ""
   string << qty_1s_to19s[number] if number < 20
   string << qty_20s_to_90s[first] +" "+ qty_1s_to19s[second] if number >= 20 && second != 0
   string << qty_20s_to_90s[first] if number >= 20 && second == 0

  return string

end
