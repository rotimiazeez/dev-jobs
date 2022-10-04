module JobsHelper
  def job_type(job_type)
    case job_type
    when 'Full-time'
      content_tag :span, job_type.to_s, class: 'tag is-primary'
    when 'Part-time'
      content_tag :span, job_type.to_s, class: 'tag is-link'
    when 'Freelance'
      content_tag :span, job_type.to_s, class: 'tag is-warning'
    when 'Contract'
      content_tag :span, job_type.to_s, class: 'tag is-info'
    else
      ''
    end
  end

  def job_author(job)
    user_signed_in? && current_user.id == job.user_id
  end
end
