def log(block_description, &block)
  puts 'Beginning ' + block_description.inspect + '...'
  puts '...' + block_description.inspect + ' finished, returning: ' + block.call.to_s
end

log 'outer block' do
  log 'inner block' do
    5
  end
  log 'yet another block' do
    'I like Thai food!'
  end
end
puts ''
