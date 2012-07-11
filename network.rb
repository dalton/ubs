Shoes.app do
  @status_colors = {"500" => red, "200" => green, "404" => yellow}
  background white
  @list = stack do
    para "Address traffic to:", :margin => [10, 8, 10, 0]
    flow :margin => 10 do

      @url = edit_line :width => -120
      button "Download", :width => 120 do

        @statuses = stack do
          every(2) do
            @statuses.prepend do
              background "#eee".."#ccd"
              @status = stack :margin => 10 do
                dl = nil
                para @url.text, " [", link("cancel") { dl.abort }, "]", :margin => 0
                d = inscription "Beginning transfer.", :margin => 0
                p = progress :width => 1.0, :height => 14
                dl = download @url.text, :progress => proc { |dl|
                  d.text = "Transferred #{dl.transferred} of #{dl.length} bytes (#{dl.percent}%)"
                  p.fraction = dl.percent * 0.01 },
                              :finish => proc { |dl|
                                d.text = "Download completed"
                                @status.background @status_colors[dl.response.status.to_s]
                              }
              end
            end
          end
        end
      end
    end
  end
end
