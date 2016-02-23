class Header extends React.Component {
  render () {
    return (
      <div>
        <div>Name: {this.props.name}</div>
      </div>
    );
  }
}

Header.propTypes = {
  name: React.PropTypes.string
};
