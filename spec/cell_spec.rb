require_relative '../lib/cell'

describe "A cell" do
  let (:cell) {Cell.new}

  it 'exists' do
    cell
  end

  it 'is initially alive' do
    expect(cell).to be_alive
  end

  it 'can die' do
    cell.die
    expect(cell).to_not be_alive
  end

  it 'has neighbors, which is initially an empty array' do
    expect(cell.neighbors).to be_empty
  end

  it 'has a tick method' do
    expect(cell).to respond_to(:tick)
  end

  describe 'after a tick' do

    it 'a live cell with fewer than two live neighbors dies' do
      8.times { cell.neighbors << Cell.new(alive: false) }
      cell.tick
      expect(cell).to_not be_alive
    end

    xit 'a dead cell with fewer than two live neighbors stays dead' do

    end

    # TODO: Cell rules

  end

end
