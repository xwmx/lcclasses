# LCCLasses

A Ruby gem that provides the Library of Congress Classification system main classes and subclasses along with some convenience menthods.

To install:

    gem install lcclasses
    
## Usage

To find a classification code:

    LCClasses.find_main_class_by_code("T")
    => ["T", "Technology (General)"]
    LCClasses.find_subclass_by_code("AM")
    => ["AM", "Museums. Collectors and collecting"]
    LCClasses.find_all_by_code("E")
    => # returns the main "E" class and all subclasses in nested array
    LCClasses.main_classes
    => # returns all main classes
    LCClasses.subclasses
    => # returns all subclasses

The entire set of classes can be retrieved in 3 formats:

    LCClasses::CLASS_HASH
    => # nested hash of classes and subclasses
    LCClasses.nested
    => # nested array of classes and subclasses as LCClasses::LCClass objects
    LCClasses.flat
    => # flat array of classes and subclasses as LCClasses::LCClass objects

The CLASS\_HASH constant is in the following format (truncated example):

    { "A" => { 
        :name => "General Works",
        :subclasses => {
          "AC" => { :name => "Collections; Series; Collected works" }
        }
      }
    }
    
Classes are returned as specialized LCClasses::Class arrays in the format `[code, name]`. In the case of nested LCClasses:LCClass objects, they are in the format `[main_class_code, main_class_name, [[subclass_code, subclass_name]]]`. These objects are normal arrays with the following methods added:

    @class = LCClasses.find_main_class_by_code("M")
    @class.code
    => "M"
    @class.name
    => "Music"
    @class.subclasses
    => [["M", "Music"], ["ML", "Literature on music"], ["MT", "Instruction and study"]]

## Note on Patches/Pull Requests
 
* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a
  future version unintentionally.
* Commit, do not mess with rakefile, version, or history.
  (if you want to have your own version, that is fine but
   bump version in a commit by itself I can ignore when I pull)
* Send me a pull request. Bonus points for topic branches.

## Copyright

Copyright (c) 2010 William Melody. See LICENSE for details.
