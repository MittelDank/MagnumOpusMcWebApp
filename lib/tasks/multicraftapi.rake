namespace :multicraftapi do
  task :task_name, [:arg_1] => [:pre_1, :pre_2] do |t, args|
    puts arg_1
    hi = 0
  end
end
