<div class="card">
    
    <form action="{{ route('users.updateProfile', $user->id) }}" method="POST" class="w-50 p-3">
        @csrf
        @method('PUT')
        <div class="card-header">Perfil</div>
        <div class="card-body">
            <div class="mb-3">
                <label class="form-label">Tipo de pessoa</label>
                <select class="form-control @error('name') is-invalid @enderror" name="type">

                    @foreach (['PJ', 'PF'] as $type)
                    <option @selected(old('type') === $type || $user?->profile?->type === $type) value="{{$type}}">{{$type}}</option>
                    @endforeach
                </select>

                @error('type')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                @enderror
            </div>

            <div class="mb-3">
                <label class="form-label">Endereço</label>
                <input value="{{ old('address') ?? $user?->profile?->address}}" type="text"
                    class="form-control @error('address') is-invalid @enderror" name="address">

                @error('address')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                @enderror
            </div>
        </div>
        <div class="card-footer">
            <a class="btn btn-secondary" href="{{ route('users.index') }}">Voltar</a>
            <button type="submit" class="btn btn-primary text-end">Editar</button></div>
    </form>
</div>




