describe Fastlane::Actions::DebiAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The debi plugin is working!")

      Fastlane::Actions::DebiAction.run(nil)
    end
  end
end
