require 'spec_helper'
require 'high_school'

RSpec.describe HighSchool do

  it "can enroll students" do
    high_school = HighSchool.new(100)
    expect(high_school.vacancies).to eq(100)

    high_school.enroll("Lindsay Weir")
    expect(high_school.vacancies).to eq(99)
  end

  it "after a student is enrolled it returns an array of students that were enrolled" do
    high_school = HighSchool.new(100)

    high_school.enroll("Lindsay Weir")
    high_school.enroll("Sam Weir")
    high_school.enroll("Daniel Desario")
    expect(high_school.students).to eq(["Lindsay Weir", "Sam Weir", "Daniel Desario"])
    high_school.enroll("Bob Magurkin")
    expect(high_school.students).to eq(["Lindsay Weir", "Sam Weir", "Daniel Desario", "Bob Magurkin"])
  end

  it "when a student drops out they are removed from students" do
    high_school = HighSchool.new(100)

    high_school.enroll("Lindsay Weir")
    high_school.enroll("Daniel Desario")
    high_school.enroll("Sam Weir")
    high_school.drop_out("Sam Weir")
    expect(high_school.students).to eq(["Lindsay Weir", "Daniel Desario"])
  end

  it "when a students drops out they are added to the drop outs" do
    high_school = HighSchool.new(100)

    high_school.enroll("Lindsay Weir")
    high_school.enroll("Daniel Desario")
    high_school.enroll("Sam Weir")
    high_school.drop_out("Sam Weir")
    expect(high_school.drop_out_list).to eq(["Sam Weir"])
  end

  it "when a student graduates tehy are added to alumni from students" do
    high_school = HighSchool.new(100)

    high_school.enroll("Lindsay Weir")
    high_school.enroll("Daniel Desario")
    high_school.graduate("Lindsay Weir")
    expect(high_school.alumni).to eq(["Lindsay Weir"])
    high_school.enroll("Bob Magurkin")
    high_school.graduate("Bob Magurkin")
    expect(high_school.alumni).to eq(["Lindsay Weir", "Bob Magurkin"])
  end
end
