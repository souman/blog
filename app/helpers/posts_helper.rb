module PostsHelper
  def nested_comments(comments)
    comments.map do |comment, sub_comment|
       render(comment) + content_tag(:div, nested_comments(sub_comment), :class => "nested_messages")
    end.join.html_safe
  end
end
