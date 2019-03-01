module BasicParams
  extend ActiveSupport::Concern

  def ticket_params
    {
      request_number: params['RequestNumber'],
      sequence_number: params['SequenceNumber'],
      request_type: params['RequestType'],
      response_due_data: params['DateTimes']['ResponseDueDateTime'],
      primary_sa_code: params['ServiceArea']['PrimaryServiceAreaCode']['SACode'],
      additional_sa_codes: params['ServiceArea']['AdditionalServiceAreaCodes']['SACode'],
      digsite_info: helpers.digsite_type(params['DigsiteInfo']['WellKnownText'])
    }
  end

  def excavator_params
    {
      company_name: params['Excavator']['CompanyName'],
      address: params['Excavator']['Address'],
      crew_on_site: params['Excavator']['CrewOnSite']
    }
  end
end
