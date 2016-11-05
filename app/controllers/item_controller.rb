class ItemController < ApplicationController

  def index
    render json: {
        items: [
            {:name=>"Transcendence Machine", :id=>"0"},
            {:name=>"Transcendence Device", :id=>"1"},
            {:name=>"Hipster Sunrise", :id=>"2"},
            {:name=>"That Feeling", :id=>"3"},
            {:name=>"Money or War", :id=>"4"},
            {:name=>"West Coast Birth", :id=>"5"},
            {:name=>"Ground Rule Double", :id=>"6"},
            {:name=>"Danger Third Rail", :id=>"7"},
            {:name=>"Mr Moffit's Broken Television", :id=>"8"},
            {:name=>"Broken Television", :id=>"9"},
            {:name=>"Standwell", :id=>"10"},
            {:name=>"Malfunctor", :id=>"11"},
            {:name=>"Null Pointer Exception", :id=>"12"},
            {:name=>"Phillip's Toy Car", :id=>"13"},
            {:name=>"Broken Television Experiment", :id=>"14"},
            {:name=>"Magenta Noise", :id=>"15"},
            {:name=>"Noise Knows Best", :id=>"16"},
            {:name=>"Like A Banana", :id=>"17"},
            {:name=>"Like Us On Facebook", :id=>"18"},
            {:name=>"Follow Me On Twitter", :id=>"19"},
            {:name=>"NoneType", :id=>"20"},
            {:name=>"Void of Thought", :id=>"21"},
            {:name=>"Null and Void", :id=>"22"},
            {:name=>"The Fine Print", :id=>"23"},
            {:name=>"Ned, Who's A Surrealist", :id=>"24"},
            {:name=>"Mediocritex", :id=>"25"},
            {:name=>"Martin Dreams Of Music", :id=>"26"},
            {:name=>"Heather Did It", :id=>"27"},
            {:name=>"Silicon Volleyball", :id=>"28"},
            {:name=>"Posted Placard", :id=>"29"}
       ]
   }
  end

end
