<div class="card">

    <form action="{{ route('users.updateInterests', $user->id) }}" method="POST" class="w-50 p-3">
        @csrf
        @method('PUT')
        <div class="card-header">Interesses</div>

        <div class="card-body">
            @foreach (['Futebol', 'Formula 1'] as $item)
                <div class="form-check">
                    <input class="form-check-input @error('interests') is-invalid @enderror" type="checkbox" name="interests[][name]" value="{{ $item }}"
                    @checked(in_array($item, $user->interests->pluck('name')->toArray()))
                        id="flexCheckChecked">
                    <label class="form-check-label" for="flexCheckChecked">
                        {{ $item }}
                    </label>

                    @if ($loop->last)
                        @error('interests')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    @endif
                </div>
            @endforeach
        </div>


        <div class="card-footer">
            <a class="btn btn-secondary" href="{{ route('users.index') }}">Voltar</a>
            <button type="submit" class="btn btn-primary text-end">Editar</button>
        </div>
    </form>
</div>
