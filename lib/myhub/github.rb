module Myhub
  class Github
    include HTTParty
    base_uri "https://api.github.com"

    # Your code here too!
    def initialize
      @headers = {
        "Authorization"  => "token #{ENV["AUTH_TOKEN"]}",
        "User-Agent"     => "HTTParty"
      }
    end

      def list_issues
        issues = Github.get("/orgs/TIY-ATL-ROR-2015-Sep/issues", :headers => @headers, :query => {assignee:"intetaget"})
        results = []
        ## loop over the issues (.each?)
            ## interesting_parts = get_essential(issue)
            ## results.push(interesting_parts)
        ## write a method to get the pieces we want
        ## add that into results
        results
      end

      def open_issues(options={})
        Github.patch("/repos/TIY-ATL-ROR-2015-Sep/{intetaget}/issues/#{number}", :headers=>@headers, :query =>{assignee:"intetaget"})
      end

      def close_issues(options={})
        Github.patch("/repos/TIY-ATL-ROR-2015-Sep/intetaget/issues/#{number}", :headers=>@headers, :query =>{assignee:"intetaget"})
      end
  end
end
