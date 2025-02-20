<div class="card">

    <form action="{{ route('users.updateRoles', $user->id) }}" method="POST" class="w-50 p-3">
        @csrf
        @method('PUT')
        <div class="card-header">Cargos</div>

        <div class="card-body">
            @foreach ($roles as $role)
                <div class="form-check">
                    <input class="form-check-input @error('roles') is-invalid @enderror" type="checkbox" name="roles[]" value="{{ $role->id }}"
                    @checked(in_array($role->name, $user->roles->pluck('name')->toArray()))
                        id="flexCheckChecked">
                    <label class="form-check-label" for="flexCheckChecked">
                        {{ $role->name }}
                    </label>

                    @if ($loop->last)
                        @error('roles')
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
