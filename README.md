ruby-counter-class
==================

2 classes, Counter and BucketCounter, both extensions of Hash.  Counter will increment a key by 1 each time something is added.  Bucket counter supports integer intervals.  You can set an interval (example) 1-10, and adding any number between 1 and 10 will increment that bucket


Counter
=======

1.9.2-p290 :004 > require './counter'
 => true 
1.9.2-p290 :005 > Counter
 => Counter 
1.9.2-p290 :006 > dogs = Counter.new
 => {} 
1.9.2-p290 :007 > dogs.add 'collie'
 => 1 
1.9.2-p290 :008 > dogs.add 'lab'
 => 1 
1.9.2-p290 :009 > dogs
 => {"collie"=>1, "lab"=>1} 
1.9.2-p290 :011 > dogs.add 'lab'
 => 2 
1.9.2-p290 :012 > dogs.add 'lab'
 => 3 
1.9.2-p290 :013 > dogs
 => {"collie"=>1, "lab"=>3} 
1.9.2-p290 :014 > dogs.add 'mastiff'
 => 1 
1.9.2-p290 :015 > dogs.add 'mastiff'
 => 2 
1.9.2-p290 :016 > dogs
 => {"collie"=>1, "lab"=>3, "mastiff"=>2} 


BucketCounter
=============

1.9.2-p290 :019 >   require('./bucket_counter')
 => true 
1.9.2-p290 :021 > nums = BucketCounter.new([1,2,3,4,5,10,20,30])
 => {} 
1.9.2-p290 :022 > nums.add 1
 => 1 
1.9.2-p290 :023 > nums.add 5
 => 1 
1.9.2-p290 :024 > nums
 => {"1"=>1, "5"=>1} 
1.9.2-p290 :025 > nums.add 6
 => 1 
1.9.2-p290 :026 > nums.add 9
 => 2 
1.9.2-p290 :027 > nums.add 10
 => 3 
1.9.2-p290 :028 > nums.add 15
 => 1 
1.9.2-p290 :029 > nums
 => {"1"=>1, "5"=>1, "6-10"=>3, "11-20"=>1} 
1.9.2-p290 :030 > nums.add 55
 => 1 
1.9.2-p290 :031 > nums.add 60
 => 2 
1.9.2-p290 :032 > nums
 => {"1"=>1, "5"=>1, "6-10"=>3, "11-20"=>1, "30+"=>2} 

