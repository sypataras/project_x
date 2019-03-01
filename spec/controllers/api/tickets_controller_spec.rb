require 'rails_helper'
RSpec.describe Api::TicketsController, type: :controller do
  let(:params) do
    {
      "RequestNumber": "00001",
      "ReferenceRequestNumber": "",
      "VersionNumber": "0",
      "SequenceNumber": "2421",
      "RequestType": "Normal",
      "RequestAction": "Restake",
      "DateTimes": {
        "RequestTakenDateTime": "2011/07/02 23:09:38",
        "TransmissionDateTime": "",
        "LegalDateTime": "2011/07/08 07:00:00",
        "ResponseDueDateTime": "2011/07/13 23:59:59",
        "RestakeDate": "2011/07/21 00:00:00",
        "ExpirationDate": "2011/07/26 00:00:00",
        "LPMeetingAcceptDueDate": "",
        "OverheadBeginDate": "",
        "OverheadEndDate": ""
      },
      "ServiceArea": {
        "PrimaryServiceAreaCode": {
          "SACode": "ZZGL103"
        },
        "AdditionalServiceAreaCodes": {
          "SACode": [
            "ZZL01",
            "ZZL02",
            "ZZL03"
          ]
        }
      },
      "Excavator": {
        "CompanyName": "John Doe CONSTRUCTION",
        "Address": "555 Some RD",
        "City": "SOME PARK",
        "State": "ZZ",
        "Zip": "55555",
        "Type": "Excavator",
        "CrewOnsite": "true"
      },
      "DigsiteInfo": {
        "WellKnownText": "POLYGON((-81.13390268058475 32.07206917625161,-81.14660562247929 32.04064386441295,-81.08858407706913 32.02259853170128,-81.05322183341679 32.02434500961698,-81.05047525138554 32.042681017283066,-81.0319358226746 32.06537765335268,-81.01202310294804 32.078469305179404,-81.02850259513554 32.07963291684719,-81.07759774894413 32.07090546831167,-81.12154306144413 32.08806865844325,-81.13390268058475 32.07206917625161))"
      }
    }
  end

  describe 'POST #create' do
    context 'valid attributes' do
      before do
        get :create, params: params
      end

      it 'returns http success' do
        expect(response).to have_http_status(:success)
      end
    end
  end
end
