module SimpleForm
  module Components
    module LabelInput
      def self.included(base)
        base.send :include, SimpleForm::Components::Labels
      end

      def label_input        
        (options[:label] == false ? "" : label) + input + abbreviation
      end
    end
  end
end