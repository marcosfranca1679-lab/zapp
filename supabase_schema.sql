-- Execute este script no SQL Editor do seu projeto Supabase para criar a tabela de notificações

-- 1. Criação da tabela notifications
CREATE TABLE IF NOT EXISTS public.notifications (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    title TEXT NOT NULL,
    message TEXT NOT NULL,
    target_user TEXT DEFAULT NULL, -- NULL significa que é para todos os usuários. Caso contrário, armazena o MAC address.
    is_active BOOLEAN DEFAULT TRUE NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now()) NOT NULL
);

-- 2. Habilitar o Row Level Security (RLS) se aplicável (opcional, mas recomendado)
ALTER TABLE public.notifications ENABLE ROW LEVEL SECURITY;

-- 3. Criar política de acesso público para leitura (permite que qualquer pessoa ou o app leia as mensagens ativas)
CREATE POLICY "Permitir leitura de notificações ativas para todos" 
ON public.notifications 
FOR SELECT 
USING (is_active = true);

-- 4. Criar política de acesso total para inserção e edição (usada pelo painel administrativo com a API Key pública)
CREATE POLICY "Permitir inserção e edição geral" 
ON public.notifications 
FOR ALL 
USING (true)
WITH CHECK (true);
