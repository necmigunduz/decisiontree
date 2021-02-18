require 'rubygems'
require 'decisiontree'

attributes = ['Age','Education','Income','Marital Status']
training = [
    ['36-55','Master','High','Single',1],
    ['18-35','High-school','Middle','Single',0],
    ['36-55','Master','High','Single',1],
    ['18-35','PhD','High','Married',1],
    ['<18','High-school','Low','Single',1],
    ['55+','High-school','High','Married',0],
    ['55+','High-school','High','Married',1],
    ['55+','High-school','High','Married',1],
    ['55+','High-school','High','Married',1],
    ['<18','Masters','Low','Single',0]
]

dec_tree = DecisionTree::ID3Tree.new(attributes, training, 1, :discrete)

dec_tree.train

test = ['<18','High-school','High','Single']

decision = dec_tree.predict(test)

puts "Predicted: #{decision}"