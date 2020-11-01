class Event<T> {}

class Loading<T> extends Event<T> {}

class SuccessEvent<T> extends Event<T> {
  final T value;

  SuccessEvent(this.value);
}

class Error<T> extends Event<T> {
  final T message;

  Error(this.message);
}