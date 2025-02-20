<div class="card">
    <form action="{{ route('users.update', $user->id) }}" method="POST" class="w-50 p-3">
        @csrf
        @method('PUT')
        <div class="card-header">Dados Básicos</div>
        <div class="card-body">
            <div class="mb-3">
                <label class="form-label">Name</label>
                <input value="{{ old('name') ?? $user->name }}" type="text"
                    class="form-control @error('name') is-invalid @enderror" name="name">

                @error('name')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                @enderror
            </div>

            <div class="mb-3">
                <label class="form-label">E-mail</label>
                <input value="{{ old('email') ?? $user->email }}" type="email"
                    class="form-control @error('email') is-invalid @enderror" name="email">

                @error('email')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                @enderror
            </div>

            <div class="mb-3">
                <label class="form-label">Senha</label>
                <input type="password" class="form-control @error('password') is-invalid @enderror" name="password">

                @error('password')
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




