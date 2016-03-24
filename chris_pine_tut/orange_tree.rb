  class OrangeTree
    def initialize
      @tree_age = 0
      @tree_height = 0
      @orange_count = 0
      puts 'Planting an orange tree from seed is a time commitment.'
      puts 'A commitment well worth it.'
      puts ''
    end

    def tree_height
      puts 'The tree is now ' + @tree_height.to_s + ' feet tall.'
      puts ''
      one_year_passes
    end

    def pick_an_orange
      if @orange_count > 0
        @orange_count = @orange_count - 1
        puts 'The orange was delicious, but save some for harvest.'
        puts ''
      else
        puts 'There are no oranges to pick.'
        puts ''
      end
      one_year_passes
    end

    def count_the_oranges
      puts 'The tree has ' + @orange_count.to_s + ' oranges to be harvested.'
      puts ''
      one_year_passes
    end

    def one_year_passes
      #check for death
      fred = dead?
      puts fred.inspect
      if fred
        if @tree_age == 0
            puts 'The first year of growth is the most trying for a young plant.'
            puts 'I\'m sorry your baby tree has died.'
            puts 'Plant another seed.'
            exit
        elsif @tree_age < 5
            puts 'Orange trees are fragile in youth, your tree did not get to produce any fruit.'
            puts 'Try again with another tree!'
            exit
        elsif (@tree_age > 4 and @tree_age < 15)
            puts 'Orange trees tend to be hearty as they strive toward maturity.'
            puts 'Your tree lived ' + @tree_age.to_s + ' years.'
            puts 'Your tree was unlucky and did not make it to old age.'
            exit
        elsif (@tree_age > 14 and @tree_age < 85)
            puts 'Orange trees tend to be hearty through maturity,'
            puts 'yet still susceptible to insects and diseases.'
            puts 'Your tree lived ' + @tree_age.to_s + ' years.'
            puts 'Your tree died after producing yummy fruit for a number of years.'
            exit
        else
            puts 'Orange trees normally produce fruit for about 50 years'
            puts 'before they are replaced with a new tree, but can live'
            puts 'for around a hundred years if well cared for.'
            puts 'Your tree lived ' + @tree_age.to_s + ' years.'
            puts 'You harvest much fruit over the years, but now it is'
            puts 'time to replace your tree with a new one.'
            exit
        end
      end

      # height changes
      if @tree_age < 5
        @change_in_height = 2
      else
        @change_in_height = 1
      end

      # yearly growth
      @tree_height = @tree_height + @change_in_height

      # harvest changes
      if @tree_age < 5
        @orange_count = 0
      elsif (@tree_age > 4 && @tree_age < 8)
        @orange_count = (@tree_age - 4) * 10
      elsif (@tree_age > 7 && @tree_age < 10)
        @orange_count = (@tree_age - 7) * 20
      elsif (@tree_age > 9 && @tree_age < 85)
        @orange_count = 100 + ((@tree_age - 10) * 10)
      else
        @orange_count = @orange_count - (1 + rand(10))
      end

      # age the tree
      @tree_age = @tree_age + 1
    end

    # below this are the methods the user can not access
    private

    def dead?
      @prob_death = 1 + rand(100)
      if  (@tree_age == 0 && @prob_death < 8) ||
          (@tree_age < 5 && @prob_death < 8) ||
          ((@tree_age > 4 && @tree_age < 15) && @prob_death < 3) ||
          ((@tree_age > 14 && @tree_age < 85) && (@prob_death < (2 + (@tree_age * 0.3).to_i))) ||
          (@prob_death < 30 + ((@tree_age - 85) * 4))
        true
      end
    end

  end

  tree_watch = 0
  my_tree = OrangeTree.new
  while tree_watch < 150
    my_tree.tree_height
    my_tree.pick_an_orange
    my_tree.count_the_oranges
    puts '*********************'
    tree_watch += 1
  end
