import UIKit

class SecondCellCustomClass: UITableViewCell {

    let textView = UITextView()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupTextView()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupTextView()
    }

    private func setupTextView() {
        textView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(textView)
        NSLayoutConstraint.activate([
            textView.topAnchor.constraint(equalTo: contentView.topAnchor),
            textView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            textView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            textView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])
    }
}

