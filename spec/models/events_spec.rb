require 'spec_helper'

describe Event do
	it { should have_many(:photos) }
	it { should have_many (:comments)}

end