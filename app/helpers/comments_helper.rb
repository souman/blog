module CommentsHelper
  def nested_comment(comments)
    comments.map do |comment, sub_comment|
       render(comments) + content_tag(:div, nested_comments(sub_comments), :class => "nested_messages")
    end.join.html_safe
  end
  def time_since_creation
    Time.now - created_at
  end
end
