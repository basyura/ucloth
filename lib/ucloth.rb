require "ucloth/version"

module UCloth
  class HTML
    TEMPLATE =<<-EOF
    <html>
    <head>
      <title><%= title %></title>
      <style>
      h2 {
        border-left  : 10px solid gray;
        padding-left : 5px;
      }
      pre {
        padding : 0 5 20 5; 
        border  : 1px solid gray;
        margin-left : 20px;
      }
      </style>
    </head>
    <body>
    <%= body %>
    </body>
    </html>
    EOF
    #
    #
    def initialize(in_dir, out_dir)
      @in_dir  = in_dir
      @out_dir = out_dir
    end
    #
    #
    def write(file)
      self.class.write(File.join(@in_dir, file), @out_dir)
    end
    #
    #
    def self.write(file_path, out_dir)
      out_name = File.basename(file_path).split('.')[0] + '.html'
      # read uiki
      html = RedCloth.new(open(file_path, "r:utf-8").read).to_html
      # out html
      open(File.join(out_dir, out_name), "w:utf-8") do |out|
        title = out_name
        body  = html
        out.puts ERB.new(TEMPLATE).result(binding)
      end
    end
  end
end
