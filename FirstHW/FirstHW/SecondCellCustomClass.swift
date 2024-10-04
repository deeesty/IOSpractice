import UIKit

class SecondCellCustomClass: UITableViewCell {

  let textView: UITextView = {
    let textView = UITextView()
    textView.translatesAutoresizingMaskIntoConstraints = false
    textView.font = UIFont.systemFont(ofSize: 16)
    textView.isEditable = true
    textView.backgroundColor = .clear
    return textView
  }()

  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    
    contentView.addSubview(textView)
    NSLayoutConstraint.activate([
      textView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
      textView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16),
      textView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
      textView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
    ])
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

