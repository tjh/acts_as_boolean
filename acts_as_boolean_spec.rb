require File.expand_path('acts_as_boolean')

class ObjectWithActsAsBoolean
  extend ActsAsBoolean
end

describe ActsAsBoolean do
  let(:instance) { ObjectWithActsAsBoolean.new }


  describe '#acts_as_boolean' do
    context 'with an argument of :my_attribute' do
      before(:each) { ObjectWithActsAsBoolean.send :acts_as_boolean, :my_attribute }

      it 'should define a #my_attribute? accessor method' do
        instance.respond_to?(:my_attribute?).should be_true
      end

      it 'should define an #my_attribute= setter method' do
        instance.respond_to?(:my_attribute=).should be_true
      end

      it 'should not define a #my_attribute getter method' do
        instance.respond_to?(:my_attribute).should be_false
      end

      it 'should return false when #my_attribute? is called and my_attribute is nil' do
        instance.my_attribute?.should == false
      end

      it 'should return true when #my_attribute? is called and my_attribute is true' do
        instance.my_attribute = true
        instance.my_attribute?.should == true
      end

      it 'should return false when #my_attribute? is called and my_attribute is false' do
        instance.my_attribute = false
        instance.my_attribute?.should == false
      end
    end

    context 'with two arguments, :my_attribute and :your_attribute' do
      before(:each) { ObjectWithActsAsBoolean.send :acts_as_boolean, :my_attribute, :your_attribute }

      it 'should define a #my_attribute? accessor method' do
        instance.respond_to?(:my_attribute?).should be_true
      end

      it 'should define a #your_attribute? accessor method' do
        instance.respond_to?(:your_attribute?).should be_true
      end

      it 'should return true when #your_attribute? is called and your_attribute is true' do
        instance.your_attribute = true
        instance.your_attribute?.should == true
      end

      it 'should return true when #my_attribute? is called and my_attribute is true' do
        instance.my_attribute = true
        instance.my_attribute?.should == true
      end
    end
  end
end
