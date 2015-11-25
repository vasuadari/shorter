require 'spec_helper'
require 'shorter/active_record/tables_and_models'

module ActiveRecord
  class Base
  end
end

describe Shorter::ActiveRecord::TablesAndModels do
  let(:instance_class) { described_class.instance }

  it 'should be a singleton class' do
    expect(described_class.ancestors).to include(Singleton)
  end

  it 'responds to :tables_and_models and :loaded' do
    allow(ActiveRecord::Base).to receive(:subclasses).and_return([])

    expect(instance_class).to respond_to(:tables_and_models)
    expect(instance_class).to respond_to(:loaded)
  end

  it '#load! method loads tables and models' do
    models = [double(table_name: 'users')]
    allow(ActiveRecord::Base).to receive(:subclasses).and_return(models)


    expect(instance_class.load!).to eql({ 'users' => models.first })
  end

  context '#reload!' do
    it 'updates cached tables and models when count differs' do
      allow(ActiveRecord::Base).to receive(:subclasses).and_return([])
      expect(instance_class).to receive(:load!)

      instance_class.reload!
    end

    it 'does nothing when count matches' do
      allow(ActiveRecord::Base).to receive(:subclasses).and_return([1])
      expect(instance_class).to receive(:load!).never

      instance_class.reload!
    end
  end

  context '#model' do
    it 'first time invokes #load! method' do
      allow(instance_class).to receive(:loaded).and_return(false)
      expect_any_instance_of(String).to receive(:pluralize)
      expect(instance_class).to receive(:reload!)

      instance_class.model('user')
    end

    it 'should not invoke #load! for second time' do
      allow(instance_class).to receive(:loaded).and_return(true)
      expect_any_instance_of(String).to receive(:pluralize)
      expect(instance_class).to receive(:reload!).never

      instance_class.model('user')
    end
  end
end
