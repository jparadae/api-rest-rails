class V2::TodosController < ApplicationController
    def index
       json_response({ message: '2do controller versionado'})  
    end     
end
