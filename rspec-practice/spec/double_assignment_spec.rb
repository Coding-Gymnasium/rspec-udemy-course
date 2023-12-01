# frozen_string_literal: true

RSpec.describe "doulbes" do
  it "tests the student's knowledge of the course's content" do
    # For each question, write the code that should go here

    database_connection = double("Database Connection", connect: true, disconnect: "Goodbye")

    expect(database_connection.connect).to eq(true)
    expect(database_connection.disconnect).to eq("Goodbye")

    file_system = double("File System")
    allow(file_system).to receive_messages(read: "Romeo and Juliet", write: false)
    expect(file_system.read).to eq("Romeo and Juliet")
    expect(file_system.write).to eq(false)
  end
end
