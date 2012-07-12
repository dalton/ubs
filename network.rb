Shoes.app do

  @status_colors = {"500" => lightcoral, "200" => lightgreen, "404" => khaki}
  @status_counts = {"2" => 0, "3" => 0, "4" => 0, "5" => 0}

  stack(width: 450) do

    para "Status Counts"
    flow do
      @success = para "Successes: #{@status_counts["2"]}"
      @redirection = para "Redirections: #{@status_counts["3"]}"
      @client_error = para "Client Errors: #{@status_counts["4"]}"
      @server_error = para "Server Errors: #{@status_counts["5"]}"
    end
  end
  stack do
    flow do
      @url = edit_line :width => -120
      @url.text = "http://www.ihmc.us"
      button "Start", :width => 120 do
        @traffic = every(1) do
          @statuses.prepend do
            @status = stack do
              dl = nil
              para @url.text, " [", link("cancel") { dl.abort }, "]", :margin => 0
              d = inscription "Beginning transfer.", :margin => 0
              p = progress :width => 1.0, :height => 14
              dl = download @url.text, :progress => proc { |dl|
                d.text = "Transferred #{dl.transferred} of #{dl.length} bytes (#{dl.percent}%)"
                p.fraction = dl.percent * 0.01 },
                            :finish => proc { |dl|
                              @status.clear {
                                status = dl.response.status.to_s
                                background @status_colors[status]
                                para @url.text
                                inscription "Download completed. #{dl.percent}% Status: #{status}"
                                p = progress width: 1.0, height: 14
                                sc = @status_counts[status[0]] || 0
                                sc += 1
                                @status_counts[status[0]] = sc
                                refresh_counts
                              }
                            }

            end
          end
        end
      end

      button "Stop", width: 120 do
        @traffic.stop
      end
    end



    background white
    @list = stack do
      @statuses = stack do

      end
    end
  end

  def refresh_counts
    @success.text = "Successes: #{@status_counts["2"]}"
    @redirection.text =  "Redirections: #{@status_counts["3"]}"
    @client_error.text =  "Client Errors: #{@status_counts["4"]}"
    @server_error.text =  "Server Errors: #{@status_counts["5"]}"

  end

end
