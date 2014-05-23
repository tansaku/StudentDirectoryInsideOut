require 'student_directory.rb'

describe "Student Directory" do 
  it "Allows a user to view a list of students" do
    expect(student_list).to eq "james"
  end

  it "counts number of students for the user" do
    expect(count_students).to eq 2
  end

  context 'capture_name' do
    before do
      $stdin = StringIO.new("James T. Kirk\n")
    end

    after do
      $stdin = STDIN
    end

    it "should be 'James T. Kirk'" do
      expect(capture_name).to be == 'James T. Kirk'
    end
  end
end