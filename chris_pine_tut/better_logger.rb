$levels = 0
def log(block_description, &block)
  puts ('  ' * $levels) + 'Beginning ' + block_description.inspect + '...'
  $levels += 1
  return_value = block.call
  $levels = $levels - 1
  puts ('  ' * $levels) + '...' + block_description.inspect + ' finished, returning: ' + return_value.to_s
end

log 'outer block' do
  log 'inner block' do
    5
  end

  log 'yet another inner block' do
    log 'the inner inner block' do
      3.times { puts 'echo'}
    end

    'I like Thai food!'
  end
end
puts ''
