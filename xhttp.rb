 Shoes.app do
   stack do
     title "Searching Google", :size => 16
     @status = para "One moment..."
     # Search Google for 'shoes' and print the HTTP headers
     download "http://www.ihmc.us/People.php" do |goog|
       @status.text = "Headers: " + goog.response.status.to_s
     end
   end
 end