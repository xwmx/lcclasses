require 'test_helper'

class TestLCClasses < Test::Unit::TestCase
  
  should "return main classes" do
    assert_equal 21, LCClasses.main_classes.length
  end
  
  should "return subclasses" do
    assert_equal 223, LCClasses.subclasses.length
  end
  
  should "should return flat" do
    assert_equal 244, LCClasses.flat.length
  end
  
  should "should return nested" do
    assert_equal 21, LCClasses.nested.length
    assert_equal 223, LCClasses.nested.inject([]) { |r, m| r += m.subclasses }.length
  end
  
  should "find main class by code" do
    assert_equal ["T", "Technology (General)"], LCClasses.find_subclass_by_code("T")
  end
  
  should "find subclass by code" do
    assert_equal ["AM", "Museums. Collectors and collecting"], LCClasses.find_subclass_by_code("AM")
  end
  
  should "find all by code" do
    assert_equal [["E", "History of America, United States"]], LCClasses.find_all_by_code("E")
    assert_equal 11, LCClasses.find_all_by_code("A").length
  end
  
  context "LCCLass" do
  
    setup {
      @hash = { 
        "A" => { 
          :name => "General Works",
          :subclasses => {
            "AC"   => { :name => "Collections; Series; Collected works" }
          }
        }
      }
    }
  
    should "flatten code hash" do
      assert_equal(
        [["A", "General Works"], ["AC", "Collections; Series; Collected works"]],
        LCClasses::LCClass.flatten(@hash)
      )
    end
    
    should "nest code hash" do
      assert_equal(
        [["A", "General Works", [["AC", "Collections; Series; Collected works"]]]],
        LCClasses::LCClass.nest(@hash)
      )
    end
    
    should "return subclasses" do
      assert_equal 3, LCClasses.find_main_class_by_code("M").subclasses.length
      assert_equal 0, LCClasses.find_main_class_by_code("E").subclasses.length
    end
    
    should "respond to code and name" do
      assert_equal "A", LCClasses::LCClass["A", "General Works"].code
      assert_equal "General Works", LCClasses::LCClass["A", "General Works"].name
    end
  end
end
